.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
