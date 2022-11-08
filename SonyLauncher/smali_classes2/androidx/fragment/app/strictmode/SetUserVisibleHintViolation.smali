.class public final Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;
.super Landroidx/fragment/app/strictmode/Violation;
.source "SetUserVisibleHintViolation.java"


# instance fields
.field private final mIsVisibleToUser:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Z)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .line 28
    invoke-direct {p0, p1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    iput-boolean p2, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->mIsVisibleToUser:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to set user visible hint to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->mIsVisibleToUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroidx/fragment/app/strictmode/SetUserVisibleHintViolation;->mIsVisibleToUser:Z

    return v0
.end method
