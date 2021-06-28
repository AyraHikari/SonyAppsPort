.class Lcom/sonyericsson/music/dialogs/SleepTimerDialog$1;
.super Ljava/lang/Object;
.source "SleepTimerDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/SleepTimerDialog;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->getOption(I)Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    move-result-object p2

    iput-object p2, p1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->mSelectedOption:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-void
.end method
