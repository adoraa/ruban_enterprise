import Navbar from '@/components/server/Navbar'
import Sidebar from '@/components/server/Sidebar'
import React from 'react'

export default function layout({children}) {
  return (
    <div className='flex gap-1'>
        {/* sidebar */}
        <Sidebar/>
        <div className='w-full'>
            {/* Header */}
            <Navbar/>
            <main>
                {children}
            </main>
            {/* Main */}
        </div>
        {/* main body */}
    </div>
  )
}
