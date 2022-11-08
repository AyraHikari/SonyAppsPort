.class Lcom/android/launcher3/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 153
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmModelLoaded(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$1;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmModelDelegate(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->validateData()V

    .line 159
    :cond_0
    return-void
.end method
