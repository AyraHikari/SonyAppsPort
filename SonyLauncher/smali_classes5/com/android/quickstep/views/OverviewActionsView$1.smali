.class Lcom/android/quickstep/views/OverviewActionsView$1;
.super Ljava/util/ArrayList;
.source "OverviewActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OverviewActionsView;->setupOverviewActions(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/quickstep/views/OverviewActionsView<",
        "TT;>.OverviewAction;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/OverviewActionsView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/quickstep/views/OverviewActionsView;

    .line 406
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1;, "Lcom/android/quickstep/views/OverviewActionsView$1;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iput-object p2, p0, Lcom/android/quickstep/views/OverviewActionsView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v7, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    sget v3, Lcom/android/launcher3/R$id;->action_screenshot:I

    sget v4, Lcom/android/launcher3/R$id;->screenshot_space:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_screenshot:I

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;-><init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/OverviewActionsView$1;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v7, Lcom/android/quickstep/views/OverviewActionsView$1$1;

    sget v3, Lcom/android/launcher3/R$id;->action_share:I

    sget v4, Lcom/android/launcher3/R$id;->oav_three_button_space:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_share:I

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$1$1;-><init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/OverviewActionsView$1;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v7, Lcom/android/quickstep/views/OverviewActionsView$1$2;

    sget v3, Lcom/android/launcher3/R$id;->action_popupwindow:I

    sget v4, Lcom/android/launcher3/R$id;->popupwindow_space:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_tw:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$1$2;-><init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/OverviewActionsView$1;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v7, Lcom/android/quickstep/views/OverviewActionsView$1$3;

    sget v3, Lcom/android/launcher3/R$id;->action_mwswitch:I

    sget v4, Lcom/android/launcher3/R$id;->mwswitch_space:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_dd:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$1$3;-><init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/OverviewActionsView$1;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v7, Lcom/android/quickstep/views/OverviewActionsView$1$4;

    sget v3, Lcom/android/launcher3/R$id;->action_clearall:I

    sget v4, Lcom/android/launcher3/R$id;->clearall_space:I

    sget v5, Lcom/android/launcher3/R$drawable;->ic_clear_all:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$1$4;-><init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/OverviewActionsView$1;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method
