.class Lcom/sonyericsson/music/picker/MusicPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/picker/MusicPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/picker/MusicPickerActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/picker/MusicPickerActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;->this$0:Lcom/sonyericsson/music/picker/MusicPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;->this$0:Lcom/sonyericsson/music/picker/MusicPickerActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->access$000(Lcom/sonyericsson/music/picker/MusicPickerActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;->this$0:Lcom/sonyericsson/music/picker/MusicPickerActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 151
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$1;->this$0:Lcom/sonyericsson/music/picker/MusicPickerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
