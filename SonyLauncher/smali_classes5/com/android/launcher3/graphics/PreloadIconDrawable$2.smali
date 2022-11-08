.class Lcom/android/launcher3/graphics/PreloadIconDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreloadIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 268
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->-$$Nest$fputmRanFinishAnimation(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)V

    .line 272
    return-void
.end method
