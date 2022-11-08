.class Landroidx/preference/MultiSelectListPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/preference/MultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Landroidx/preference/MultiSelectListPreference$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreference$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/MultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 252
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    .line 255
    new-array v1, v0, [Ljava/lang/String;

    .line 256
    .local v1, "strings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 262
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 268
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 270
    return-void
.end method
