.class public Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
.super Ljava/lang/Object;
.source "RemoteTargetGluer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RemoteTargetGluer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteTargetHandle"
.end annotation


# instance fields
.field private mPlaybackController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

.field private final mTaskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

.field private final mTransformParams:Lcom/android/quickstep/util/TransformParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTaskViewSimulator(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTaskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransformParams(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0
    .param p1, "taskViewSimulator"    # Lcom/android/quickstep/util/TaskViewSimulator;
    .param p2, "transformParams"    # Lcom/android/quickstep/util/TransformParams;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    .line 199
    iput-object p1, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTaskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

    .line 200
    return-void
.end method


# virtual methods
.method public getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mPlaybackController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    return-object v0
.end method

.method public getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTaskViewSimulator:Lcom/android/quickstep/util/TaskViewSimulator;

    return-object v0
.end method

.method public getTransformParams()Lcom/android/quickstep/util/TransformParams;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mTransformParams:Lcom/android/quickstep/util/TransformParams;

    return-object v0
.end method

.method public setPlaybackController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 0
    .param p1, "playbackController"    # Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 217
    iput-object p1, p0, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->mPlaybackController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    .line 218
    return-void
.end method
