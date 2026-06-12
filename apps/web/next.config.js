/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  transpilePackages: ['@mib/db', '@mib/shared'],
}

module.exports = nextConfig
