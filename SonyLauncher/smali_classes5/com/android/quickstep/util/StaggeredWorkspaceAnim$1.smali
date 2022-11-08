.class Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredWorkspaceAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

.field final synthetic val$hotseat:Lcom/android/launcher3/Hotseat;

.field final synthetic val$hotseatClipChildren:Z

.field final synthetic val$hotseatClipToPadding:Z

.field final synthetic val$workspace:Lcom/android/launcher3/Workspace;

.field final synthetic val$workspaceClipChildren:Z

.field final synthetic val$workspaceClipToPadding:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Lcom/android/launcher3/Workspace;ZZLcom/android/launcher3/Hotseat;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    .line 141
    iput-object p1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iput-object p2, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspace:Lcom/android/launcher3/Workspace;

    iput-boolean p3, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspaceClipChildren:Z

    iput-boolean p4, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspaceClipToPadding:Z

    iput-object p5, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseat:Lcom/android/launcher3/Hotseat;

    iput-boolean p6, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseatClipChildren:Z

    iput-boolean p7, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseatClipToPadding:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 144
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspaceClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$workspaceClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseatClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setClipChildren(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;->val$hotseatClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setClipToPadding(Z)V

    .line 148
    return-void
.end method
