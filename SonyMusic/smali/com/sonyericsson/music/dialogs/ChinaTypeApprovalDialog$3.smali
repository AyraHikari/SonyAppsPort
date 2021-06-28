.class Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;
.super Ljava/lang/Object;
.source "ChinaTypeApprovalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$permissions:[Lcom/sonyericsson/music/settings/AppPermission;

.field final synthetic val$rememberSelectionView:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;[Lcom/sonyericsson/music/settings/AppPermission;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$permissions:[Lcom/sonyericsson/music/settings/AppPermission;

    iput-object p3, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$rememberSelectionView:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$permissions:[Lcom/sonyericsson/music/settings/AppPermission;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    .line 144
    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->access$000(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    .line 143
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->setCtaAcceptance(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z

    move-result p1

    .line 145
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->val$rememberSelectionView:Landroid/widget/CheckBox;

    .line 146
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 145
    invoke-static {p2, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setCtaDialogShown(Landroid/content/Context;Z)V

    .line 147
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 148
    instance-of v0, p2, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 154
    move-object p1, p2

    check-cast p1, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->setConsent(Z)V

    .line 155
    invoke-virtual {p2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
