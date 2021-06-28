.class Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$1;
.super Ljava/lang/Object;
.source "ChinaTypeApprovalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mShowCtaDialogAtStartup:Z

    return-void
.end method
