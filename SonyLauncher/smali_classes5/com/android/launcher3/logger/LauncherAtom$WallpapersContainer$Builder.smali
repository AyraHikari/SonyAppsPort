.class public final Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13451
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13452
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
    .locals 1

    .line 13497
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->copyOnWrite()V

    .line 13498
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    .line 13499
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 13475
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getCardinality()I

    move-result v0

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 13464
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 13485
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->copyOnWrite()V

    .line 13486
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;I)V

    .line 13487
    return-object p0
.end method
