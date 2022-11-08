.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;->f$0:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;->f$0:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadAllApps$1(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p1

    return p1
.end method
