.class Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$2;
.super Ljava/lang/Object;
.source "EditMusicInfoBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$2;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 799
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
