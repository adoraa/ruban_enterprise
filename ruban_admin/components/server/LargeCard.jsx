import { PackageCheck } from 'lucide-react'
import React from 'react'

export default function LargeCard({data}) {
  return (
    <div className={`rounded-lg text-white shadow-md p-8 flex items-center flex-col gap-1 ${data.color}`}>
        <PackageCheck/>
        <h4>{data.title}</h4>
        <h2 className='text-3xl'>₦{data.amount}</h2>
    </div>
  )
}
