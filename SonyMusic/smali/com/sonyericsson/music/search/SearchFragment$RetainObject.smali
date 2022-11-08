.class Lcom/sonyericsson/music/search/SearchFragment$RetainObject;
.super Ljava/lang/Object;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainObject"
.end annotation


# instance fields
.field private mLayoutManagerState:Landroid/os/Parcelable;

.field private final mQueryText:Ljava/lang/String;

.field private final mToggleInput:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/os/Parcelable;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mQueryText:Ljava/lang/String;

    .line 1014
    iput-boolean p2, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mToggleInput:Z

    .line 1015
    iput-object p3, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mLayoutManagerState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method getLayoutManagerState()Landroid/os/Parcelable;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mLayoutManagerState:Landroid/os/Parcelable;

    return-object v0
.end method

.method getQueryText()Ljava/lang/String;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method shouldToggleInput()Z
    .locals 1

    .line 1023
    iget-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->mToggleInput:Z

    return v0
.end method
