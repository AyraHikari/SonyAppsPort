.class Lcom/sonyericsson/music/MusicApplication$2;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicApplication;->sendAnalytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicApplication;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicApplication;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sonyericsson/music/MusicApplication$2;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$2;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicApplication;->access$200(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->sendAnalytics()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$2;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicApplication;->access$300(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->sendAnalytics()V

    return-void
.end method
