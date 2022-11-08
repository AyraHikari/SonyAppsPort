.class public final Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SliceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Slice;",
        "Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SliceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10730
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10731
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUri()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    .locals 1

    .line 10769
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->copyOnWrite()V

    .line 10770
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->-$$Nest$mclearUri(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    .line 10771
    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 10746
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10754
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasUri()Z
    .locals 1

    .line 10739
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->hasUri()Z

    move-result v0

    return v0
.end method

.method public setUri(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10761
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->copyOnWrite()V

    .line 10762
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->-$$Nest$msetUri(Lcom/android/launcher3/logger/LauncherAtom$Slice;Ljava/lang/String;)V

    .line 10763
    return-object p0
.end method

.method public setUriBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10778
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->copyOnWrite()V

    .line 10779
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->-$$Nest$msetUriBytes(Lcom/android/launcher3/logger/LauncherAtom$Slice;Lcom/google/protobuf/ByteString;)V

    .line 10780
    return-object p0
.end method
