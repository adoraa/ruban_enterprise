import Heading from '@/components/server/Heading'
import LargeCards from '@/components/server/LargeCards'
import SmallCards from '@/components/server/SmallCards'
import React from 'react'

export default function page() {
  return (
    <div>
      <Heading title="Dashboard" />
      {/* Large cards */}
      <LargeCards/>
      {/* Small cards */}
      <SmallCards/>
      {/* Charts */}
      {/* Recent orders table */}
    </div>
  )
}
