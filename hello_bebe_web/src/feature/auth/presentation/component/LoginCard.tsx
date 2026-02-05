'use client';

import React from 'react';
import { supabase } from '@/core/supabase/supabase-client';

export const LoginCard = () => {
  const handleLogin = async (provider: 'google' | 'apple') => {
    try {
      const { error } = await supabase.auth.signInWithOAuth({
        provider,
        options: {
          redirectTo: `${window.location.origin}/auth/callback`,
        },
      });
      if (error) throw error;
    } catch (error) {
      console.error('Login error:', error);
    }
  };

  return (
    <div className="flex min-h-screen items-center justify-center p-4 bg-[var(--color-bg-main)]">
      <div className="w-full max-w-md glass-card rounded-[var(--radius-premium)] p-8 animate-pulse-soft border-accent/20">
        <header className="text-center mb-10">
          <h1 className="text-h1 mb-2 tracking-tighter text-[var(--color-primary)]">
            Hello Bebe
          </h1>
          <p className="text-body text-gray-500">
            태아의 첫 만남, 설레는 기다림을 시작하세요
          </p>
        </header>

        <div className="space-y-4">
          <button
            onClick={() => handleLogin('google')}
            className="w-full flex items-center justify-center gap-3 px-6 py-4 bg-white border border-gray-200 rounded-xl hover:bg-gray-50 transition-all duration-300 shadow-sm"
          >
            <img src="/assets/icons/google.svg" alt="" className="w-5 h-5" />
            <span className="font-medium text-gray-700">Google로 시작하기</span>
          </button>

          <button
            onClick={() => handleLogin('apple')}
            className="w-full flex items-center justify-center gap-3 px-6 py-4 bg-black text-white rounded-xl hover:bg-zinc-900 transition-all duration-300 shadow-lg gold-glow"
          >
            <img src="/assets/icons/apple.svg" alt="" className="w-5 h-5 invert" />
            <span className="font-medium">Apple로 로그인</span>
          </button>
        </div>

        <footer className="mt-12 text-center text-xs text-gray-400">
          <p>로그인 시 헬로베베의 <span className="underline cursor-pointer">이용약관</span> 및</p>
          <p><span className="underline cursor-pointer">개인정보처리방침</span>에 동의하게 됩니다.</p>
        </footer>
      </div>
    </div>
  );
};
