.class Lcom/sonyericsson/music/QuickPlaySelectionActivity$1;
.super Ljava/lang/Object;
.source "QuickPlaySelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/QuickPlaySelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/QuickPlaySelectionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/QuickPlaySelectionActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$1;->this$0:Lcom/sonyericsson/music/QuickPlaySelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$1;->this$0:Lcom/sonyericsson/music/QuickPlaySelectionActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->startPlaylistPicker()V

    return-void
.end method
