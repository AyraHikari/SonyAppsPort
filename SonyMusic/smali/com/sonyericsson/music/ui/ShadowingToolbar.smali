.class public Lcom/sonyericsson/music/ui/ShadowingToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "ShadowingToolbar.java"


# static fields
.field private static final DARKEN:F = 0.3f

.field private static final RADIUS:F = 5.0f

.field private static final SCALE:F = 0.5f


# instance fields
.field private mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mBuffer:[Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mShadowsEnabled:Z

.field private mTmpIn:Landroid/renderscript/Allocation;

.field private mTmpOut:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040228

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    .line 62
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1101c7

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    :cond_0
    return-void
.end method

.method private createRenderScript(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 106
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private releaseAllocations()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpIn:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpIn:Landroid/renderscript/Allocation;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpOut:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpOut:Landroid/renderscript/Allocation;

    :cond_1
    return-void
.end method

.method private updateShadow()Landroid/graphics/Bitmap;
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 148
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 151
    iget-object v5, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v3

    .line 152
    iget-object v5, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v5, v2

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->releaseAllocations()V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpIn:Landroid/renderscript/Allocation;

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpOut:Landroid/renderscript/Allocation;

    goto :goto_0

    .line 157
    :cond_0
    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 161
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 163
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 167
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 168
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 169
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    const v5, 0x3e99999a    # 0.3f

    .line 170
    invoke-virtual {v4, v5, v5, v5, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 171
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 172
    invoke-virtual {v1, v4, v0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 175
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    iget-object v4, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpIn:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpIn:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mTmpOut:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mShadowsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->updateShadow()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    .line 139
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mShadowsEnabled:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->createRenderScript(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 82
    iput-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 86
    iput-object v1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBlurIntrinsic:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->releaseAllocations()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mShadowsEnabled:Z

    if-eq p1, v0, :cond_1

    .line 112
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mShadowsEnabled:Z

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/music/ui/ShadowingToolbar;->mBuffer:[Landroid/graphics/Bitmap;

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->releaseAllocations()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method
