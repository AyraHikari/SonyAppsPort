.class public Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.super Ljava/lang/Object;
.source "RemoteTransitionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;,
        Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteTransitionCompat"


# instance fields
.field mFilter:Landroid/window/TransitionFilter;

.field final mTransition:Landroid/window/RemoteTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 541
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$3;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$3;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 529
    .local v1, "flg":B
    sget-object v2, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    .line 530
    .local v2, "transition":Landroid/window/RemoteTransition;
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionFilter;

    .line 532
    .local v3, "filter":Landroid/window/TransitionFilter;
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 533
    const-class v4, Landroid/annotation/NonNull;

    invoke-static {v4, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 535
    iput-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 538
    return-void
.end method

.method constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/window/RemoteTransition;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V
    .locals 2
    .param p1, "transition"    # Landroid/window/RemoteTransition;
    .param p2, "filter"    # Landroid/window/TransitionFilter;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 486
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 487
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 489
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 492
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationListener;Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "recents"    # Lcom/android/systemui/shared/system/RecentsAnimationListener;
    .param p2, "controller"    # Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .param p3, "appThread"    # Landroid/app/IApplicationThread;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 119
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$2;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V

    .line 188
    .local v0, "remote":Landroid/window/IRemoteTransition;
    new-instance v1, Landroid/window/RemoteTransition;

    invoke-direct {v1, v0, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "runner"    # Lcom/android/systemui/shared/system/RemoteTransitionRunner;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "appThread"    # Landroid/app/IApplicationThread;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 83
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/system/RemoteTransitionRunner;)V

    .line 113
    .local v0, "remote":Landroid/window/IRemoteTransition;
    new-instance v1, Landroid/window/RemoteTransition;

    invoke-direct {v1, v0, p3}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    .line 114
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    return-void
.end method


# virtual methods
.method public addHomeOpenCheck(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "homeActivity"    # Landroid/content/ComponentName;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    const/16 v1, 0x100

    iput v1, v0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 198
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/window/TransitionFilter$Requirement;

    new-instance v3, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v3}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v3}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iput-object v2, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v4

    iput v1, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v4

    iput-object p1, v0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v4

    iput v5, v0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 205
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v5

    iput v5, v0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    iget-object v0, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v0, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, v0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 207
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public describeContents()I
    .locals 1

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/window/TransitionFilter;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    return-object v0
.end method

.method public getTransition()Landroid/window/RemoteTransition;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "flg":B
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 512
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 514
    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->mFilter:Landroid/window/TransitionFilter;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 515
    :cond_1
    return-void
.end method
