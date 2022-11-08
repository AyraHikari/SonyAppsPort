.class Lcom/android/launcher3/LauncherFiles$1;
.super Ljava/util/ArrayList;
.source "LauncherFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-object v0, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherFiles$1;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v0, Lcom/android/launcher3/LauncherFiles;->OTHER_FILES:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherFiles$1;->addAll(Ljava/util/Collection;)Z

    .line 60
    return-void
.end method
