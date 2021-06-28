.class Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$1;
.super Ljava/lang/Object;
.source "GoogleDriveConnectionSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->getConnectionSetting(I)Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->access$000(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;)V

    return-void
.end method
