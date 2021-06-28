.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog$1;
.super Ljava/lang/Object;
.source "PlayFromSearchHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
