.class Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspacePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

.field final synthetic val$animatorIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    .line 227
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->val$animatorIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->-$$Nest$fgetmAnimators(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->val$animatorIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 231
    return-void
.end method
