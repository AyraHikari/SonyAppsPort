.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final synthetic f$2:Lcom/android/wm/shell/pip/IPip;

.field public final synthetic f$3:Lcom/android/wm/shell/splitscreen/ISplitScreen;

.field public final synthetic f$4:Lcom/android/wm/shell/onehanded/IOneHanded;

.field public final synthetic f$5:Lcom/android/wm/shell/transition/IShellTransitions;

.field public final synthetic f$6:Lcom/android/wm/shell/startingsurface/IStartingWindow;

.field public final synthetic f$7:Lcom/android/wm/shell/recents/IRecentTasks;

.field public final synthetic f$8:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

.field public final synthetic f$9:Lcom/android/wm/shell/back/IBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$2:Lcom/android/wm/shell/pip/IPip;

    iput-object p4, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$3:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iput-object p5, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$4:Lcom/android/wm/shell/onehanded/IOneHanded;

    iput-object p6, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$5:Lcom/android/wm/shell/transition/IShellTransitions;

    iput-object p7, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$6:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iput-object p8, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$7:Lcom/android/wm/shell/recents/IRecentTasks;

    iput-object p9, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$8:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p10, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$9:Lcom/android/wm/shell/back/IBackAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$2:Lcom/android/wm/shell/pip/IPip;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$3:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$4:Lcom/android/wm/shell/onehanded/IOneHanded;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$5:Lcom/android/wm/shell/transition/IShellTransitions;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$6:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$7:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$8:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iget-object v9, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda9;->f$9:Lcom/android/wm/shell/back/IBackAnimation;

    invoke-virtual/range {v0 .. v9}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$0$com-android-quickstep-TouchInteractionService$TISBinder(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    return-void
.end method
