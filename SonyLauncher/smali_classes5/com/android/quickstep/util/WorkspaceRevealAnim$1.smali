.class Lcom/android/quickstep/util/WorkspaceRevealAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WorkspaceRevealAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/WorkspaceRevealAnim;->addRevealAnimatorsForView(Landroid/view/View;Landroid/util/FloatProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/WorkspaceRevealAnim;

.field final synthetic val$scaleProperty:Landroid/util/FloatProperty;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/WorkspaceRevealAnim;Landroid/util/FloatProperty;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/WorkspaceRevealAnim;

    .line 112
    iput-object p1, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->this$0:Lcom/android/quickstep/util/WorkspaceRevealAnim;

    iput-object p2, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->val$scaleProperty:Landroid/util/FloatProperty;

    iput-object p3, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->val$scaleProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->val$v:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 116
    iget-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 117
    return-void
.end method
