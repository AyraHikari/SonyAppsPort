.class Lcom/android/launcher3/folder/PreviewBackground$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->fadeInBackgroundShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 306
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$3;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$3;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->-$$Nest$fputmShadowAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)V

    .line 310
    return-void
.end method
