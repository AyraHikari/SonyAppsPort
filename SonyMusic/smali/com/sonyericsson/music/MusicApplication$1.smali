.class Lcom/sonyericsson/music/MusicApplication$1;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicApplication;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicApplication;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/music/MusicApplication$1;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/content/SharedPreferences;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$1;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication$1;->this$0:Lcom/sonyericsson/music/MusicApplication;

    iget-object v1, v1, Lcom/sonyericsson/music/MusicApplication;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicApplication$1;->call()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
