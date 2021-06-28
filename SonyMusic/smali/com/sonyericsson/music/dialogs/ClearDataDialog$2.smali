.class Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;
.super Ljava/lang/Object;
.source "ClearDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/ClearDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/ClearDataDialog;Landroid/app/Activity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->access$000(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->access$000(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    sget-object p2, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->access$100(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->access$100(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 98
    sget-object p2, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    new-instance p2, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-direct {p2, v0, p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;-><init>(Landroid/content/Context;[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 101
    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
