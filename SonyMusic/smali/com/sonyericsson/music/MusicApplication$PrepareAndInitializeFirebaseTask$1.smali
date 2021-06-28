.class Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;
.super Ljava/lang/Thread;
.source "MusicApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->handleGoogleDriveDisabled(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;Landroid/content/Context;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;->this$0:Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->removeGoogleDriveData(Landroid/content/Context;)V

    return-void
.end method
