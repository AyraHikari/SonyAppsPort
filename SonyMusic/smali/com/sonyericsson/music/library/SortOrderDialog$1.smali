.class Lcom/sonyericsson/music/library/SortOrderDialog$1;
.super Ljava/lang/Object;
.source "SortOrderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/SortOrderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/SortOrderDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/SortOrderDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/music/library/SortOrderDialog$1;->this$0:Lcom/sonyericsson/music/library/SortOrderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/music/library/SortOrderDialog$1;->this$0:Lcom/sonyericsson/music/library/SortOrderDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/library/SortOrderDialog;->access$000(Lcom/sonyericsson/music/library/SortOrderDialog;)Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1, p2}, Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;->onSortOrderSelected(I)V

    :cond_0
    return-void
.end method
