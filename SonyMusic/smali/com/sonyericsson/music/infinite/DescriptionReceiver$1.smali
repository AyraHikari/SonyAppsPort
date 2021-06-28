.class Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;
.super Ljava/lang/Object;
.source "DescriptionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/infinite/DescriptionReceiver;->saveExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/infinite/DescriptionReceiver;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lastUpdateTime:J

.field final synthetic val$resourceUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/infinite/DescriptionReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->this$0:Lcom/sonyericsson/music/infinite/DescriptionReceiver;

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$resourceUri:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$lastUpdateTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$className:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$resourceUri:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;->val$lastUpdateTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/infinite/PluginPreferences;->saveDescriptionAndTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
