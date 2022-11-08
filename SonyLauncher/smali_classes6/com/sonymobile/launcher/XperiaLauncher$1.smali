.class Lcom/sonymobile/launcher/XperiaLauncher$1;
.super Ljava/lang/Object;
.source "XperiaLauncher.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/launcher/XperiaLauncher;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/XperiaLauncher;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/XperiaLauncher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/XperiaLauncher;

    .line 104
    iput-object p1, p0, Lcom/sonymobile/launcher/XperiaLauncher$1;->this$0:Lcom/sonymobile/launcher/XperiaLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p5, "uiExecutor"    # Ljava/util/concurrent/Executor;

    .line 121
    return-void
.end method

.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher$1;->this$0:Lcom/sonymobile/launcher/XperiaLauncher;

    invoke-static {v0}, Lcom/sonymobile/launcher/XperiaLauncher;->-$$Nest$fgetmDestroyed(Lcom/sonymobile/launcher/XperiaLauncher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher$1;->this$0:Lcom/sonymobile/launcher/XperiaLauncher;

    invoke-static {v0}, Lcom/sonymobile/launcher/XperiaLauncher;->-$$Nest$minitXssConfiguration(Lcom/sonymobile/launcher/XperiaLauncher;)V

    .line 111
    :cond_0
    return-void
.end method
