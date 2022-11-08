.class Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredWorkspaceAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addStaggeredAnimationForView(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    .line 271
    iput-object p1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;->this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iput-object p2, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 274
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;->val$v:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 275
    return-void
.end method
