.class Lcom/android/launcher3/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->duplicateCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/LauncherModel;->-$$Nest$smgetDbCursor(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v2, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 850
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$9;->val$context:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$smduplicateAppDelete(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 851
    return-void
.end method
