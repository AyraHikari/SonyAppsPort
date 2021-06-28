.class Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$1;
.super Ljava/lang/Object;
.source "AudioSystem.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$1;->this$0:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$1;->this$0:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;->onAudioFocusChanged(I)V

    :cond_0
    return-void
.end method
