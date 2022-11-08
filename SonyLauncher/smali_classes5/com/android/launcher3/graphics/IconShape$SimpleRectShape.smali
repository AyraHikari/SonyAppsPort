.class abstract Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;
.super Lcom/android/launcher3/graphics/IconShape;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleRectShape"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$SimpleRectShape-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .locals 7
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

    .line 93
    .local p1, "target":Landroid/view/View;, "TT;"
    new-instance v6, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;->getStartRadius(Landroid/graphics/Rect;)F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;-><init>(Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {v6, p1, p5}, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method protected abstract getStartRadius(Landroid/graphics/Rect;)F
.end method
