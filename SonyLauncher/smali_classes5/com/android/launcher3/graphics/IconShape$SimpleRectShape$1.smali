.class Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;
.super Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.source "IconShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;
    .param p2, "startRadius"    # F
    .param p3, "endRadius"    # F
    .param p4, "startRect"    # Landroid/graphics/Rect;
    .param p5, "endRect"    # Landroid/graphics/Rect;

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShape$SimpleRectShape$1;->this$0:Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method
