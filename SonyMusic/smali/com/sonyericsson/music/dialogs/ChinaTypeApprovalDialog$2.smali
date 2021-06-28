.class Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;
.super Ljava/lang/Object;
.source "ChinaTypeApprovalDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$permissionList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;Landroid/widget/ListView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;->val$permissionList:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 129
    instance-of p1, p2, Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    .line 130
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 131
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->toggle()V

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    iget-object p1, p1, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    iget-object p4, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;->val$permissionList:Landroid/widget/ListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/settings/AppPermission;

    .line 134
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    :cond_0
    return-void
.end method
