/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  transpilePackages: ['@mib/db', '@mib/shared'],
  output: 'standalone',
}

module.exports = nextConfig
