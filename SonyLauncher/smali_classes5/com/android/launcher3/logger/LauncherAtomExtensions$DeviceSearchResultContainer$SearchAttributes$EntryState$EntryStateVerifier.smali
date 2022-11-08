.class final Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;
.super Ljava/lang/Object;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryStateVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 606
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "number"    # I

    .line 609
    invoke-static {p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
