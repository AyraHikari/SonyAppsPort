.class abstract Lcom/android/launcher3/graphics/IconShape$PathShape;
.super Lcom/android/launcher3/graphics/IconShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PathShape"
.end annotation


# instance fields
.field private final mTmpPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape;-><init>()V

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$PathShape-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>()V

    return-void
.end method

.method static synthetic lambda$createRevealAnimator$0(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 151
    invoke-interface {p1, p3}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 152
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/views/ClipPathView;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ClipPathView;->setClipPath(Landroid/graphics/Path;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .locals 4
    .param p2, "startRect"    # Landroid/graphics/Rect;
    .param p3, "endRect"    # Landroid/graphics/Rect;
    .param p4, "endRadius"    # F
    .param p5, "isReversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/android/launcher3/views/ClipPathView;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "FZ)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 126
    .local p1, "target":Landroid/view/View;, "TT;"
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 127
    .local v0, "path":Landroid/graphics/Path;
    nop

    .line 128
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;->newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    .line 131
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v2, 0x2

    new-array v2, v2, [F

    if-eqz p5, :cond_0

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_0

    :cond_0
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 132
    .local v2, "va":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v3, Lcom/android/launcher3/graphics/IconShape$PathShape$1;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/graphics/IconShape$PathShape$1;-><init>(Lcom/android/launcher3/graphics/IconShape$PathShape;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    new-instance v3, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "radius"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/launcher3/graphics/IconShape$PathShape;->addToPath(Landroid/graphics/Path;FFF)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method protected abstract newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end method
