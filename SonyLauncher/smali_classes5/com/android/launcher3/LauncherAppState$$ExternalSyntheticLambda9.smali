.class public final synthetic Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;->f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda9;->f$1:Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$2(Landroid/content/SharedPreferences;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void
.end method
