.class public Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconOptions"
.end annotation


# instance fields
.field mIsInstantApp:Z

.field mShrinkNonAdaptiveIcons:Z

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    return-void
.end method


# virtual methods
.method public setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "instantApp"    # Z

    .line 481
    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    .line 482
    return-object p0
.end method

.method public setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "shrink"    # Z

    .line 465
    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    .line 466
    return-object p0
.end method

.method public setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 473
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 474
    return-object p0
.end method
