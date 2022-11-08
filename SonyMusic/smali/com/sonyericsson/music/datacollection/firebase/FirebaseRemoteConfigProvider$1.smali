.class Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;
.super Ljava/lang/Thread;
.source "FirebaseRemoteConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$000(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;->this$0:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->access$100(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
