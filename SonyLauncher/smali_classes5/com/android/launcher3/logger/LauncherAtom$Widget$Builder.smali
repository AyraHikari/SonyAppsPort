.class public final Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8956
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8957
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppWidgetId()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9048
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9049
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9050
    return-object p0
.end method

.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9181
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9182
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9183
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9108
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9109
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9110
    return-object p0
.end method

.method public clearSpanX()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 8986
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 8987
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 8988
    return-object p0
.end method

.method public clearSpanY()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9017
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9018
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9019
    return-object p0
.end method

.method public clearWidgetFeatures()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9225
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9226
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9227
    return-object p0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 9034
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getAppWidgetId()I

    move-result v0

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 9146
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9158
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 9073
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9085
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .line 8972
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result v0

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .line 9003
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result v0

    return v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 9211
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getWidgetFeatures()I

    move-result v0

    return v0
.end method

.method public hasAppWidgetId()Z
    .locals 1

    .line 9027
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasAppWidgetId()Z

    move-result v0

    return v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 9135
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 9062
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public hasSpanX()Z
    .locals 1

    .line 8965
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasSpanX()Z

    move-result v0

    return v0
.end method

.method public hasSpanY()Z
    .locals 1

    .line 8996
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasSpanY()Z

    move-result v0

    return v0
.end method

.method public hasWidgetFeatures()Z
    .locals 1

    .line 9204
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasWidgetFeatures()Z

    move-result v0

    return v0
.end method

.method public setAppWidgetId(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9040
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9041
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9042
    return-object p0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9169
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9170
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    .line 9171
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9194
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9195
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V

    .line 9196
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9096
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9097
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    .line 9098
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9121
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9122
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V

    .line 9123
    return-object p0
.end method

.method public setSpanX(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 8978
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 8979
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 8980
    return-object p0
.end method

.method public setSpanY(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9009
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9010
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9011
    return-object p0
.end method

.method public setWidgetFeatures(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9217
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9218
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9219
    return-object p0
.end method
