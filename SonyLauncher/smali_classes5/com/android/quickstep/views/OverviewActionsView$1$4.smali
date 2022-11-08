.class Lcom/android/quickstep/views/OverviewActionsView$1$4;
.super Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;
.source "OverviewActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OverviewActionsView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/views/OverviewActionsView<",
        "TT;>.OverviewAction;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/views/OverviewActionsView$1;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "this$1"    # Lcom/android/quickstep/views/OverviewActionsView$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "actionResId"    # I
    .param p4, "spaceResId"    # I
    .param p5, "iconResId"    # I
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 496
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$4;, "Lcom/android/quickstep/views/OverviewActionsView$1$4;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$4;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v1, p1, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;-><init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method setViewEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 500
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$4;, "Lcom/android/quickstep/views/OverviewActionsView$1$4;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$1$4;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v0, v0, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$4;->mActionResId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, "actionView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 502
    return-void
.end method
