.class Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;
.super Ljava/lang/Object;
.source "SleepTimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/SleepTimerDialog;Landroid/content/Context;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 165
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    iget-object v0, p2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSleepTimerController:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;

    if-nez p2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;->activateDelayedPause(J)V

    .line 172
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    iget-object v0, v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 173
    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setSleepTimerValue(Landroid/content/Context;J)V

    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 166
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
