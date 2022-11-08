.class public Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;
.super Ljava/lang/Object;
.source "TaskThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighResLoadingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingingFast:Z

.field private mForceHighResThumbnails:Z

.field private mHighResLoadingEnabled:Z

.field private mVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmVisible(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    return p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    .line 57
    invoke-static {}, Lcom/android/quickstep/TaskThumbnailCache;->-$$Nest$smsupportsLowResThumbnails()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mForceHighResThumbnails:Z

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateState()V
    .locals 4

    .line 83
    iget-boolean v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    .line 84
    .local v0, "prevState":Z
    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mForceHighResThumbnails:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mFlingingFast:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    .line 85
    if-eq v0, v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;

    iget-boolean v3, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    invoke-interface {v2, v3}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;->onHighResLoadingStateChanged(Z)V

    .line 86
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 90
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;

    .line 61
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mHighResLoadingEnabled:Z

    return v0
.end method

.method public removeCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;

    .line 65
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public setFlingingFast(Z)V
    .locals 0
    .param p1, "flingingFast"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mFlingingFast:Z

    .line 75
    invoke-direct {p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->updateState()V

    .line 76
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->mVisible:Z

    .line 70
    invoke-direct {p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->updateState()V

    .line 71
    return-void
.end method
