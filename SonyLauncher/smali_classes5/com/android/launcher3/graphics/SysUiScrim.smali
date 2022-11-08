.class public Lcom/android/launcher3/graphics/SysUiScrim;
.super Ljava/lang/Object;
.source "SysUiScrim.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final ALPHA_MASK_BITMAP_DP:I = 0xc8

.field private static final ALPHA_MASK_HEIGHT_DP:I = 0x1f4

.field private static final ALPHA_MASK_WIDTH_DP:I = 0x2

.field private static final MAX_HOTSEAT_SCRIM_ALPHA:I = 0x64

.field private static final SYSUI_ANIM_MULTIPLIER:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/SysUiScrim;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSUI_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/SysUiScrim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mAnimateScrimOnNextDraw:Z

.field private final mBottomMask:Landroid/graphics/Bitmap;

.field private final mBottomMaskPaint:Landroid/graphics/Paint;

.field private mDrawBottomScrim:Z

.field private mDrawTopScrim:Z

.field private mDrawWallpaperScrim:Z

.field private final mFinalMaskRect:Landroid/graphics/RectF;

.field private mHideSysUiScrim:Z

.field private final mMaskHeight:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoot:Landroid/view/View;

.field private mSysUiAnimMultiplier:F

.field private mSysUiProgress:F

.field private final mTopScrim:Landroid/graphics/drawable/Drawable;

.field private mWallpaperScrimMaxAlpha:I

.field private final mWallpaperScrimPaint:Landroid/graphics/Paint;

.field private final mWallpaperScrimRect:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSysUiAnimMultiplier(Lcom/android/launcher3/graphics/SysUiScrim;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSysUiProgress(Lcom/android/launcher3/graphics/SysUiScrim;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSysUiAnimMultiplier(Lcom/android/launcher3/graphics/SysUiScrim;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mreapplySysUiAlpha(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlpha()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSysUiProgress(Lcom/android/launcher3/graphics/SysUiScrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/SysUiScrim;->setSysUiProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/launcher3/graphics/SysUiScrim$1;

    const-string v1, "sysUiProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/SysUiScrim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_PROGRESS:Landroid/util/FloatProperty;

    .line 71
    new-instance v0, Lcom/android/launcher3/graphics/SysUiScrim$2;

    const-string v1, "sysUiAnimMultiplier"

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/SysUiScrim$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_ANIM_MULTIPLIER:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/launcher3/graphics/SysUiScrim$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/SysUiScrim$3;-><init>(Lcom/android/launcher3/graphics/SysUiScrim;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimRect:Landroid/graphics/RectF;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimPaint:Landroid/graphics/Paint;

    .line 111
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 124
    iput v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:F

    .line 128
    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 130
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mMaskHeight:I

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$attr;->workspaceStatusBarScrim:I

    invoke-static {v1, v3}, Lcom/android/launcher3/util/Themes;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    .line 133
    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->createDitheredAlphaMask()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMask:Landroid/graphics/Bitmap;

    .line 134
    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    .line 136
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WALLPAPER_SCRIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {v1, v4}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    invoke-static {v1, v4}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawWallpaperScrim:Z

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v1

    .line 140
    .local v1, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v2, Lcom/android/launcher3/R$color;->wallpaper_scrim_color:I

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getColor(I)I

    move-result v2

    .line 141
    .local v2, "wallpaperScrimColor":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimMaxAlpha:I

    .line 142
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 145
    return-void
.end method

.method private createDitheredAlphaMask()Landroid/graphics/Bitmap;
    .locals 20

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 262
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 263
    .local v2, "width":I
    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-static {v3, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 264
    .local v3, "gradientHeight":I
    iget v4, v0, Lcom/android/launcher3/graphics/SysUiScrim;->mMaskHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 265
    .local v4, "dst":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object v11, v6

    .line 267
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/LinearGradient;

    int-to-float v7, v3

    const/4 v8, 0x3

    new-array v9, v8, [I

    const/4 v10, 0x0

    const v12, 0xffffff

    aput v12, v9, v10

    .line 270
    const/4 v10, -0x1

    const/16 v12, 0xf2

    invoke-static {v10, v12}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v12

    const/4 v13, 0x1

    aput v12, v9, v13

    const/4 v12, 0x2

    aput v10, v9, v12

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v6

    move/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 274
    .local v12, "lg":Landroid/graphics/LinearGradient;
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 275
    int-to-float v8, v2

    int-to-float v9, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hasBottomNavButtons()Z
    .locals 3

    .line 200
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 201
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 203
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 205
    .end local v0    # "windowInsets":Landroid/view/WindowInsets;
    :cond_1
    return v1
.end method

.method private reapplySysUiAlpha()V
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlphaNoInvalidate()V

    .line 246
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 249
    :cond_0
    return-void
.end method

.method private reapplySysUiAlphaNoInvalidate()V
    .locals 3

    .line 252
    iget v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    iget v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:F

    mul-float/2addr v0, v1

    .line 253
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 255
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimMaxAlpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 258
    return-void
.end method

.method private setSysUiProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 238
    iget v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 239
    iput p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    .line 240
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlpha()V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p1, "values"    # [F

    .line 184
    sget-object v0, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_ANIM_MULTIPLIER:Landroid/util/FloatProperty;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 185
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 186
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    if-nez v0, :cond_4

    .line 152
    iget v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 153
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 154
    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    if-eqz v0, :cond_1

    .line 158
    iput v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:F

    .line 159
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlphaNoInvalidate()V

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/SysUiScrim;->createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 162
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 164
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 165
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 168
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawWallpaperScrim:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawTopScrim:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawBottomScrim:Z

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMask:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 178
    :cond_4
    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawTopScrim:Z

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->hasBottomNavButtons()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawBottomScrim:Z

    .line 197
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 210
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 219
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mMaskHeight:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mWallpaperScrimRect:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    return-void
.end method
