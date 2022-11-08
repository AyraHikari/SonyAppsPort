.class Lcom/sonyericsson/music/MusicApplication$3;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicApplication;->sendSyncDependentAnalytics(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicApplication;

.field final synthetic val$syncedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicApplication;Landroid/net/Uri;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sonyericsson/music/MusicApplication$3;->this$0:Lcom/sonyericsson/music/MusicApplication;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicApplication$3;->val$syncedUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$3;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicApplication;->access$200(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication$3;->val$syncedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->sendSyncDependentAnalytics(Landroid/net/Uri;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$3;->this$0:Lcom/sonyericsson/music/MusicApplication;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicApplication;->access$300(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication$3;->val$syncedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->sendSyncDependentAnalytics(Landroid/net/Uri;)V

    return-void
.end method
