.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    check-cast p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->$r8$lambda$bjb975abNcaSEGI3LHUx6w6azVU(Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object p1

    return-object p1
.end method
