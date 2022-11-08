.class public final synthetic Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->lambda$addSysUiNavigationModeChangeListener$0(Landroid/content/Context;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method
