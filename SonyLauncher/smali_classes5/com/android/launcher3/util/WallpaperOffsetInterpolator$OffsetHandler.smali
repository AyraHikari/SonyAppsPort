.class Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;
.super Landroid/os/Handler;
.source "WallpaperOffsetInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetHandler"
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationStartOffset:F

.field private mAnimationStartTime:J

.field private mCurrentOffset:F

.field private mFinalOffset:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOffsetX:F

.field private final mWM:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 231
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 241
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    .line 243
    return-void
.end method

.method private setOffsetSafely(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating wallpaper offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPOffsetInterpolator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 248
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 303
    return-void

    .line 295
    :pswitch_0
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iget v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 297
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    .line 299
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 300
    return-void

    .line 290
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 292
    return-void

    .line 254
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 255
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    .line 256
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    .line 260
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    .line 263
    :pswitch_4
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 264
    .local v1, "oldOffset":F
    iget-boolean v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz v5, :cond_3

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    sub-long/2addr v5, v7

    .line 267
    .local v5, "durationSinceAnimation":J
    long-to-float v7, v5

    const/high16 v8, 0x437a0000    # 250.0f

    div-float/2addr v7, v8

    .line 268
    .local v7, "t0":F
    iget-object v8, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 269
    .local v8, "t1":F
    iget v9, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    iget v10, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    sub-float/2addr v10, v9

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 271
    const-wide/16 v9, 0xfa

    cmp-long v9, v5, v9

    if-gez v9, :cond_2

    move v2, v4

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 272
    .end local v5    # "durationSinceAnimation":J
    .end local v7    # "t0":F
    .end local v8    # "t1":F
    goto :goto_0

    .line 273
    :cond_3
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 276
    :goto_0
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    .line 280
    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    invoke-virtual {v2, v4, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 282
    :cond_4
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz v2, :cond_5

    .line 284
    const/4 v2, 0x3

    invoke-static {p0, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
